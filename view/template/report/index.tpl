{{define "report/index.tpl"}}
{{template "header.tpl" .}}
<h1>Home</h1>
<p>
    ระบบรายงานนี้มีเป้าหมายคือนำส่งรายงานสำคัญ ที่แต่ละตำแหน่งงาน (Role)  ได้ทำการสมัครเอาไว้ (Subscription)
</p>
<h2>Alert!</h2>
<p>Notification MQTT data.</p>

<h2>กรุณาเลือกรายงานที่ท่านต้องการ</h2>

<div class = "container">
    <h3>User</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Thai</th>
            <th>English</th>
            <th>Url</th>
        </tr>
        {{ range . }}
        <tr>
            <td>{{ .ID }}</td>
            <td>{{ .NameTh }}</td>
            <td>{{ .NameEn }}</td>
            <td>{{ .Url }}</td>
        </tr>
        {{end}}
    </table>
    <h3>ซื้อ[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Url</th>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
    <h3>คลัง[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>

{{template "footer.tpl" .}}
{{end}}
