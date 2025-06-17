# .NET 어셈블리들을 스크립트 시작 부분에서 미리 로드
Add-Type -AssemblyName "Microsoft.VisualBasic"
Add-Type -AssemblyName "System.Windows.Forms"

# 사용자로부터 이름을 입력 받는 InputBox 창 띄우기
$name = [Microsoft.VisualBasic.Interaction]::InputBox("Enter your name:", "Name Input", "")

# 이름이 비어있지 않으면, 'Hello, [Name]!' 메시지를 띄우고 웹 브라우저에서 이름 검색
if ($name -ne "") {
    # Hello, [Name]! 메시지 박스 띄우기
    [System.Windows.Forms.MessageBox]::Show("Hello, $name!");

    # 입력한 이름으로 웹 브라우저에서 검색 (Google에서 검색)
    $searchUrl = "https://www.google.com/search?q=$name"
    Start-Process $searchUrl
} else {
    # 이름이 입력되지 않으면 경고 메시지
    [System.Windows.Forms.MessageBox]::Show("Please enter a name.", "Warning", "OK", "Warning")
}
