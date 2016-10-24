{{define "home/index.tpl"}}
{{template "header.tpl" .}}
<h1>ยินดีต้อนรับสู่ Nopadol Reporting Service!</h1>
<p>ระบบรายงานนี้มีเป้าหมายคือนำส่งรายงานสำคัญ ที่แต่ละตำแหน่งงาน (Role)  ได้ทำการสมัครเอาไว้ (Subscription)
หัวข้อรายงานจะปรากฏเฉพาะรายงานที่ถูกสมัครรับรายงานไว้ แถูกสร้างและนำส่งมาให้คุณเปิดอ่านได้ทันที
</p>
<h2>กรุณาเลือกรายงานที่ท่านต้องการ</h2>

<div class = "container">
    <h3>ขาย[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
    <h3>ซื้อ[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
    <h3>คลัง[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
</div>

{{template "footer.tpl" .}}
{{end}}
