<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>
    <div class="row account-top-wrapper">
        <div class="text-center">
            <img src="${url.resourcesPath}/img/homeapp-xxxhdpi-icon.png">
            <h2>${msg("accountUpdatedMessage")}</h2>
            <p>${msg("openYourApp")}</p>
            <a class="btn-signout ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" href="${url.logoutUrl}">${msg("doSignOut")}</a>
        </div>
    </div>
    
    <#--  <div class="row">
        <div class="col-md-10"></div>
        <div class="col-md-2 subtitle">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
        </div>
    </div>  -->

    <#--  <form action="${url.accountUrl}" class="form-horizontal" method="post">

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <#if !realm.registrationEmailAsUsername>
            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <div class="">
                    <label for="username" class="control-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                </div>

                <div class="">
                    <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                </div>
            </div>
        </#if>

        <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
            <div class="">
            <label for="email" class="control-label">${msg("email")}</label> <span class="required">*</span>
            </div>

            <div class="">
                <input type="text" class="form-control" id="email" name="email" autofocus value="${(account.email!'')}"/>
            </div>
        </div>

        <div class="form-group text-center">
            <div id="kc-form-buttons" class="submit">
                <div class="">
                    <#if url.referrerURI??><a href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Cancel">${msg("doCancel")}</button>
                </div>
            </div>
        </div>
    </form>  -->

</@layout.mainLayout>
