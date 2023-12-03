# 載入 Windows.Forms 組件；執行視窗的原件
Add-Type -AssemblyName System.Windows.Forms;
Add-Type -AssemblyName PresentationFramework;

# 顯示是的 MessageBox 訊息框
$result = [System.Windows.MessageBox]::Show('我喜歡你');
$result = [System.Windows.MessageBox]::Show('我從第一眼愛上你了');
$result = [System.Windows.MessageBox]::Show('和你相處我感到非常的快樂');
$result = [System.Windows.MessageBox]::Show('I love you');

# 定義一個條件判斷有沒有答應
$result = 'No';

# 迴圈開始等於 'No' 就一直詢問
while ($result -eq 'No') {
  # 顯示是或否的 MessageBox
  $result = [System.Windows.Forms.MessageBox]::Show('可以和我在一起嗎', '', 'YesNo', 'Information');
  if ($result -eq 'Yes') {
    $result = [System.Windows.MessageBox]::Show('我愛你');
  } else {
    $result = [System.Windows.MessageBox]::Show('你在考慮一下吧');
    $result = 'No';
  }
}