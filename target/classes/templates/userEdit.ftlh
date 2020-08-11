<#import "parts/common.ftlh" as c>
<@c.page>
    <h2 align="center">User editor</h2>
    <form action="/user" method="post">
        <input type="hidden" value="${user.id}" name="userId">
        <input type="text" value="${user.username}" name="userName">
        <#list roles as role>
            <div>
                <label> <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                    ${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>
</@c.page>
