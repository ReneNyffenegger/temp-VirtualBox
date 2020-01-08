Sub x()
  Dim v As New VirtualBox.VirtualBox
  Dim m As Variant ' VirtualBox.IMachine
  For Each m In v.Machines
    Debug.Print (m.Name)
  Next m
End Sub

