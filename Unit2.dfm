object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Datos Clientes'
  ClientHeight = 312
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 32
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Apellidos:'
  end
  object Label3: TLabel
    Left = 64
    Top = 123
    Width = 47
    Height = 13
    Caption = 'Direccion:'
  end
  object Label4: TLabel
    Left = 64
    Top = 171
    Width = 46
    Height = 13
    Caption = 'Telefono:'
  end
  object Label5: TLabel
    Left = 64
    Top = 219
    Width = 37
    Height = 13
    Caption = 'Ciudad:'
  end
  object Label6: TLabel
    Left = 343
    Top = 219
    Width = 59
    Height = 13
    Caption = 'N'#186' Registro:'
  end
  object DBEdit1: TDBEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    DataField = 'nombre'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 72
    Width = 121
    Height = 21
    DataField = 'apellidos'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 120
    Width = 121
    Height = 21
    DataField = 'direccion'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 168
    Top = 168
    Width = 121
    Height = 21
    DataField = 'telefono'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 168
    Top = 216
    Width = 121
    Height = 21
    DataField = 'ciudad'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 408
    Top = 216
    Width = 53
    Height = 21
    DataField = 'id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 5
  end
  object Button1: TButton
    Left = 64
    Top = 264
    Width = 65
    Height = 25
    Caption = '<<'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 264
    Width = 57
    Height = 25
    Caption = '<'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 217
    Top = 264
    Width = 56
    Height = 25
    Caption = '>'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 287
    Top = 264
    Width = 59
    Height = 25
    Caption = '>>'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 352
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Datos'
    TabOrder = 10
    OnClick = Button5Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=mibase.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 344
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 408
    Top = 16
  end
  object tabla: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'agenda'
    TableName = 'agenda'
    Left = 344
    Top = 72
    object tablaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tablanombre: TStringField
      FieldName = 'nombre'
      Origin = 'nombre'
    end
    object tablaapellidos: TStringField
      FieldName = 'apellidos'
      Origin = 'apellidos'
      Size = 40
    end
    object tabladireccion: TStringField
      FieldName = 'direccion'
      Origin = 'direccion'
      Size = 40
    end
    object tablatelefono: TStringField
      FieldName = 'telefono'
      Origin = 'telefono'
      Size = 12
    end
    object tablaciudad: TStringField
      FieldName = 'ciudad'
      Origin = 'ciudad'
    end
  end
  object DataSource1: TDataSource
    DataSet = tabla
    Left = 416
    Top = 80
  end
end
