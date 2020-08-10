<#import "parts/common.ftlh" as c>
<@c.page>
    <h2 align="center">List of users</h2>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col">Edit</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role} <#sep > ,       </#list></td>
                <td><a href="/user/${user.id}">Edit</a></td>
            </tr>
        </#list>

        </tbody>
    </table>
</@c.page>
