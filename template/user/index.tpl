{{define "user/index.tpl"}}
{{template "header.tpl" .}}

    <h1>User Index.</h1>
    <div class="table-responsive">
        <table class="table table-hover table-condensed">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Link</th>
            </tr>
            {{range .}}
            <tr>
                <td>{{.ID}}</td>
                <td>{{.Name}}</td>
                <td>{{.Self}}</td>
            </tr>
            {{end}}

        </table>
    </div>

{{template "footer.tpl" .}}
{{end}}
