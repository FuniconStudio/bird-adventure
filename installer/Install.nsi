# 日本語UI
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Japanese.nlf"
# アプリケーション名
Name "鳥アドベンチャー"
# 作成されるインストーラ
OutFile "BirdAdventure_Installer.exe"
# インストールされるディレクトリ
InstallDir "$PROGRAMFILES\BirdAdventure"

# ページ
Page license
Page directory
Page instfiles

LicenseLangString license ${LANG_JAPANESE} license.txt
LicenseData $(license)

# デフォルト セクション
Section
  # 出力先を指定します。
  SetOutPath "$INSTDIR"
  # インストールされるファイル
  File "BirdAdventure.exe"
  File "README.txt"
  
  # 出力先を指定します。
  SetOutPath "$INSTDIR\fnt"
  # インストールされるファイル
  File "fnt\ipaexg.ttf"
  File "fnt\ipaexm.ttf"
  
  # 出力先を指定します。
  SetOutPath "$INSTDIR\img"
  # インストールされるファイル
  File "img\bg_space.png"
  File "img\boss_1.png"
  File "img\ch_bird_1.png"
  File "img\ch_bird_2.png"
  File "img\ch_bird_died.png"
  File "img\icon.ico"
  File "img\icon.png"
  File "img\sp_kari.png"
  File "img\tama.png"
  File "img\tama_2.png"
  File "img\textbox.png"
  
  # 出力先を指定します。
  SetOutPath "$INSTDIR\se"
  # インストールされるファイル
  File "se\bakuhatsu.ogg"
  File "se\damage.ogg"
  File "se\damage_2.ogg"
  File "se\hassha.ogg"
  File "se\heel.ogg"	
  
  # アンインストーラを出力
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  # スタート メニューにショートカットを登録
  CreateDirectory "$SMPROGRAMS\BirdAdventure"
  SetOutPath "$INSTDIR"
  CreateShortcut "$SMPROGRAMS\BirdAdventure\鳥アドベンチャー.lnk" "$INSTDIR\BirdAdventure.exe" ""
  # レジストリに登録
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure" "DisplayName" "鳥アドベンチャー"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure" "UninstallString" '"$INSTDIR\Uninstall.exe"'
SectionEnd

# アンインストーラ
Section "Uninstall"
  # アンインストーラを削除
  Delete "$INSTDIR\Uninstall.exe"
  # ファイルを削除
  Delete "$INSTDIR\BirdAdventure.exe"
  # ディレクトリを削除
  RMDir "$INSTDIR"
  # スタート メニューから削除
  Delete "$SMPROGRAMS\BirdAdventure\鳥アドベンチャー.lnk"
  RMDir "$SMPROGRAMS\BirdAdventure"
  # レジストリ キーを削除
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure"
SectionEnd