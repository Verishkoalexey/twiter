<#import "parts/common.ftl" as c>

<@c.page>
    <h3>User editor</h3>

<form class="row gy-2 gx-3 align-items-center" action="/user" method="post">
    <div class="col-auto">
        <input type="text" class="form-control" name="username" value="${user.username}">
    </div>


    <#list roles as role>
        <div class="form-check">
        <label class="form-check-label"><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>

    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <div class="col-md-2">
    <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>
</@c.page>
