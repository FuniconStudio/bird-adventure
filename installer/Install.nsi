# ���{��UI
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Japanese.nlf"
# �A�v���P�[�V������
Name "���A�h�x���`���["
# �쐬�����C���X�g�[��
OutFile "BirdAdventure_Installer.exe"
# �C���X�g�[�������f�B���N�g��
InstallDir "$PROGRAMFILES\BirdAdventure"

# �y�[�W
Page license
Page directory
Page instfiles

LicenseLangString license ${LANG_JAPANESE} license.txt
LicenseData $(license)

# �f�t�H���g �Z�N�V����
Section
  # �o�͐���w�肵�܂��B
  SetOutPath "$INSTDIR"
  # �C���X�g�[�������t�@�C��
  File "BirdAdventure.exe"
  File "README.txt"
  
  # �o�͐���w�肵�܂��B
  SetOutPath "$INSTDIR\fnt"
  # �C���X�g�[�������t�@�C��
  File "fnt\ipaexg.ttf"
  File "fnt\ipaexm.ttf"
  
  # �o�͐���w�肵�܂��B
  SetOutPath "$INSTDIR\img"
  # �C���X�g�[�������t�@�C��
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
  
  # �o�͐���w�肵�܂��B
  SetOutPath "$INSTDIR\se"
  # �C���X�g�[�������t�@�C��
  File "se\bakuhatsu.ogg"
  File "se\damage.ogg"
  File "se\damage_2.ogg"
  File "se\hassha.ogg"
  File "se\heel.ogg"	
  
  # �A���C���X�g�[�����o��
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  # �X�^�[�g ���j���[�ɃV���[�g�J�b�g��o�^
  CreateDirectory "$SMPROGRAMS\BirdAdventure"
  SetOutPath "$INSTDIR"
  CreateShortcut "$SMPROGRAMS\BirdAdventure\���A�h�x���`���[.lnk" "$INSTDIR\BirdAdventure.exe" ""
  # ���W�X�g���ɓo�^
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure" "DisplayName" "���A�h�x���`���["
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure" "UninstallString" '"$INSTDIR\Uninstall.exe"'
SectionEnd

# �A���C���X�g�[��
Section "Uninstall"
  # �A���C���X�g�[�����폜
  Delete "$INSTDIR\Uninstall.exe"
  # �t�@�C�����폜
  Delete "$INSTDIR\BirdAdventure.exe"
  # �f�B���N�g�����폜
  RMDir "$INSTDIR"
  # �X�^�[�g ���j���[����폜
  Delete "$SMPROGRAMS\BirdAdventure\���A�h�x���`���[.lnk"
  RMDir "$SMPROGRAMS\BirdAdventure"
  # ���W�X�g�� �L�[���폜
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\BirdAdventure"
SectionEnd