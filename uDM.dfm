object DM: TDM
  OldCreateOrder = False
  Height = 226
  Width = 294
  object rest: TRESTClient
    Params = <>
    Left = 48
    Top = 32
  end
  object request: TRESTRequest
    Client = rest
    Method = rmPOST
    Params = <>
    Response = response
    SynchronizedEvents = False
    Left = 216
    Top = 32
  end
  object response: TRESTResponse
    Left = 128
    Top = 32
  end
end
