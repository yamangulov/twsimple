<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div><@l.logout /></div>
    <div><a href="/user">Users list</a></div>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Write a message" />
        <input type="text" name="tag" placeholder="Write a tag" />
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Add</button>
    </form>
</div>
<hr>
<div>List of messages:</div>
<hr>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!"null or missing"}" placeholder="Write finding tag">
    <button type="submit">Find</button>
</form>
<hr>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}">
            </#if>
        </div>
    </div>
<#else>
    No messages stored in DB!
</#list>
</@c.page>