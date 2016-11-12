{{define "report/error.tpl"}}
{{template "header.tpl" . }}
<div class="container">
    <h1>Error from query...</h1>
    <blockquote>
        <p class="lead">{{ . }}</p>
    </blockquote>
</div>
{{template "footer.tpl" . }}
{{end}}


