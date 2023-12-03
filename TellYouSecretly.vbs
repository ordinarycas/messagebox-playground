MsgBox"我喜歡你"
MsgBox"我從第一眼就愛上你了"
MsgBox"和你相處我感到非常的快樂"
MsgBox"I love you"
for i=0 to 1
  if Msgbox("可以和我再一起嗎?",vbYesNo+vbExclamation,"i love you")=VbYes Then
    i=1
  end if
next
MsgBox"我愛你"