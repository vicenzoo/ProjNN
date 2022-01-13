unit FormMusica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, IdContext,
  IdCustomHTTPServer, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdHTTPServer, REST.Client, REST.Authenticator.OAuth, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,ShellApi,
  Vcl.Imaging.jpeg,Vcl.Imaging.GIFImg,System.JSON, Vcl.Imaging.pngimage,
  Vcl.MPlayer;

type
  TFMusica = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    OAuth2Authenticator1: TOAuth2Authenticator;
    IdHTTPServer1: TIdHTTPServer;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTRequest3: TRESTRequest;
    RESTResponse3: TRESTResponse;
    RESTClient2: TRESTClient;
    RESTRequest4: TRESTRequest;
    RESTResponse4: TRESTResponse;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Label3: TLabel;
    RESTRequest5: TRESTRequest;
    RESTResponse5: TRESTResponse;
    Button3: TButton;
    Image3: TImage;
    MediaPlayer1: TMediaPlayer;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure Image2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    procedure BuscarFoto(const AURL: string);
    procedure BuscarMinhasPlaylists(const AOffSet: Integer);
    procedure tocadoRecentemente(const AOffSet: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMusica: TFMusica;

implementation

{$R *.dfm}

uses PrincNN, FormNav;

procedure TFMusica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjNN.Button8.Enabled := True;
end;

procedure TFMusica.Button2Click(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;

  Self.IdHTTPServer1.Active := True;

  // Limpando tudo!
  Self.OAuth2Authenticator1.ResetToDefaults;

  // Credenciais do nosso aplicativo (A partir do seu cadastro de aplicativos no Spotify)
  Self.OAuth2Authenticator1.ClientID := '5e962edf3e5c4b45a6e6381720b76842';
  Self.OAuth2Authenticator1.ClientSecret := '48153f6cfa234596ae2fc78eb0a2f777';

  // End-point de AUTORIZAÇÃO do Spotify
  Self.OAuth2Authenticator1.AuthorizationEndpoint := 'https://accounts.spotify.com/authorize';

  // Escopos que queremos ter acesso do usuário
  // Self.OAuth2Authenticator1.Scope := 'user-read-private user-library-read';
    Self.OAuth2Authenticator1.Scope := 'user-read-private user-library-read playlist-modify-public user-read-recently-played streaming';

  // Página de redirecionamento com o efetivo CÓDIGO DE AUTORIZAÇÃO
  Self.OAuth2Authenticator1.RedirectionEndpoint := 'http://localhost:9090';

  // Enfim: A definição da URI para gerar o CÓDIGO DE AUTORIZAÇÃO
  //ProjNN.ANavExecute(sender);
  //FNav.ComboBox1.Text := Self.OAuth2Authenticator1.AuthorizationRequestURI;
  //FNav.BitBtn1Click(sender);
  ShellExecute(0, 'OPEN', PChar(Self.OAuth2Authenticator1.AuthorizationRequestURI), '', '', SW_SHOWNORMAL);
end;






procedure TFMusica.Button1Click(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;

  // Requisita as informações do perfil de forma assíncrona
  Self.RESTRequest1.ExecuteAsync(
    procedure
    var
      sURLFoto: string;
    begin
      // Se retornou SUCESSO recupera as informações do usuário
      if (Self.RESTResponse1.StatusCode = 200) then
      begin
        // Recuperando o ID do usuário
        Self.Label2.Caption := TJSONString(
                                 TJSONObject(
                                   Self.RESTResponse1.JSONValue
                                 ).GetValue('id')
                               ).Value;

        // Recuperando o nome do usuário
        Self.Label1.Caption := TJSONString(
                                 TJSONObject(
                                   Self.RESTResponse1.JSONValue
                                 ).GetValue('display_name')
                               ).Value;

        // Recuperando a foto do usuário
        sURLFoto := TJSONString(
                      TJSONObject(
                        TJSONArray(
                          TJSONObject(
                            Self.RESTResponse1.JSONValue
                          ).GetValue('images')
                        ).Items[0]
                      ).GetValue('url')
                    ).Value;

        Self.BuscarFoto(sURLFoto);

        Screen.Cursor := crDefault;
      end
      else
      begin
        Screen.Cursor := crDefault;
        ShowMessage(Self.RESTResponse1.StatusText);
      end;
    end);
end;

procedure TFMusica.BuscarFoto(const AURL: string);
var
  oJPG : TJPEGImage;
  oGIF : TGIFImage;
  oBMP : TBitmap;
  oFoto: TStringStream;
begin
  oFoto := TStringStream.Create;

  oJPG := TJPEGImage.Create;
  oGIF := TGIFImage.Create;
  oBMP := TBitmap.Create;

  try
    Self.RESTClient2.BaseURL := AURL;
    Self.RESTRequest4.Execute;

    if (Self.RESTResponse4.StatusCode <> 200) then
    begin
      ShowMessage(Self.RESTResponse4.StatusText);
      Exit;
    end;

    oFoto.WriteData(Self.RESTResponse4.RawBytes, Self.RESTResponse4.ContentLength);
    oFoto.Seek(0, 0);

    if Self.RESTResponse4.ContentType = 'image/jpeg' then
    begin
      oJPG.LoadFromStream(oFoto);
      oBMP.Assign(oJPG);
    end;

    if Self.RESTResponse4.ContentType = 'image/gif' then
    begin
      oGIF.LoadFromStream(oFoto);
      oBMP.Assign(oGIF);
    end;

    Self.Image1.Picture.Bitmap.Assign(oBMP);
  finally
    oFoto.Free;
    oJPG.Free;
    oGIF.Free;
    oBMP.Free;
  end;

end;

procedure TFMusica.Button4Click(Sender: TObject);
begin
  Self.Memo1.Clear;
  Screen.Cursor := crHourGlass;
  Self.BuscarMinhasPlaylists(0);
end;

procedure TFMusica.Button5Click(Sender: TObject);
var
  oDados: TJSONObject;
begin
  oDados := TJSONObject.Create;
  try
    oDados.AddPair('name', TJSONString.Create(InputBox('Nome da playlist:', 'Nome:', '')));
    oDados.AddPair('public', TJSONTrue.Create);
    Self.RESTRequest3.AddBody(oDados);

    Self.RESTRequest3.Params.ParameterByName('user_id').Value := Self.Label2.Caption;

    Self.RESTRequest3.Execute;

    if (Self.RESTResponse3.StatusCode = 201) then
    begin
      Self.Memo1.Text := TJSONString(
                           TJSONObject(
                             Self.RESTResponse3.JSONValue
                           ).GetValue('id')
                         ).Value;
    end else
    begin
      ShowMessage(Self.RESTResponse3.StatusText);
    end;

  finally
    oDados.Free;
  end;
end;

procedure TFMusica.Button3Click(Sender: TObject);
begin
  Self.Memo1.Clear;
  Screen.Cursor := crHourGlass;
  Self.tocadoRecentemente(0);
end;

procedure TFMusica.BuscarMinhasPlaylists(const AOffSet: Integer);
begin
  Self.RESTRequest2.Params.ParameterByName('offset').Value := AOffSet.ToString;
  Self.RESTRequest2.Params.ParameterByName('user_id').Value := Self.Label2.Caption;

  Self.RESTRequest2.ExecuteAsync(
    procedure
    var
      oItens: TJSONArray;
      oItem: TJSONValue;
      oPlayList: TJSONObject;
    begin
      if (Self.RESTResponse2.StatusCode = 200) then
      begin
        oItens := TJSONArray(
                    TJSONObject(
                      Self.RESTResponse2.JSONValue
                    ).GetValue('items')
                  );

        for oItem in oItens do
        begin
          oPlayList := TJSONObject(oItem);
          Self.Memo1.Lines.Add(TJSONString(
                                 oPlayList.GetValue('name')
                               ).Value);
        end;

        if (oItens.Count > 0) then
        begin
          Self.BuscarMinhasPlaylists(AOffSet + 20);
        end else
        begin
          Screen.Cursor := crDefault;
        end;
      end else
      begin
        Screen.Cursor := crDefault;
        ShowMessage(Self.RESTResponse2.StatusText);
      end;
    end);
end;

procedure TFMusica.tocadoRecentemente(const AOffSet: Integer);
begin
  Self.RESTRequest5.ExecuteAsync(
    procedure
    begin
      if (Self.RESTResponse5.StatusCode = 200) then
      begin
        Self.Label3.Caption := TJSONString(
                                 TJSONObject(
                                   Self.RESTResponse5.JSONValue
                                 ).GetValue('recently-played')
                               ).Value;
      end;
      Screen.Cursor := crDefault;
      ShowMessage(Self.RESTResponse5.StatusText);
    end);
end;

procedure TFMusica.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  // Validado a query string
  if (ARequestInfo.Params.IndexOfName('code') = -1) then
  begin
    Exit;
  end;

  // Definição do CÓDIGO DE ACESSO, que recuperamos à partir da página de redirecionamento
  Self.OAuth2Authenticator1.AuthCode := ARequestInfo.Params.Values['code'];

  // End-point para a geração do TOKEN DE ACESSO
  Self.OAuth2Authenticator1.AccessTokenEndpoint := 'https://accounts.spotify.com/api/token';

  // Definindo o TOKEN DE ACESSO à partir do CÓDIGO DE AUTORIZAÇÃO
  Self.OAuth2Authenticator1.ChangeAuthCodeToAccesToken;

  // Resposta para o browser
  AResponseInfo.ContentText := '<html><body><script language=javascript>window.close();</script>Obrigado por conceder o acesso!</body></html>';

  // Operação efetuada com sucesso!
  Memo1.Text := Self.OAuth2Authenticator1.AccessToken;
  Screen.Cursor := crDefault;
  ShowMessage('Autorização concedida com sucesso!');
end;


procedure TFMusica.Image2Click(Sender: TObject);
begin
 ShowWindow(FMusica.Handle, SW_RESTORE) ;
end;

end.
