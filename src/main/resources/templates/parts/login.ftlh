<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">User Name :</label>
            <div class="col-sm-4">
                <input type="text" name="username" id="username" class="form-control" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-4">
                <input type="password" name="password" id="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <#if isRegisterForm>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-4">
                <input type="email" name="email" id="email" class="form-control" placeholder="some@some.com"/>
            </div>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <button type="submit" class="btn btn-primary">
            <#if isRegisterForm>Create<#else>Sign In</#if>
        </button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn btn-primary" type="submit">Sing Out</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>
</#macro>