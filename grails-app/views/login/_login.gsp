<!--
***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************
-->


<div class="container page-wrap" ng-controller="AuthController">
  <div class="row posrel">
    %{--<div class="secimg-wrap login">
      <asset:image src="monsterid.png" alt="Security Image"/>

      <div class="caption">
        <p>
          This security image can be used to help identify the
          <strong>official Kraken website</strong>.
        It has been uniquely generated by Kraken based on your IP address.
        </p>

        <p>
          If you don't recognize the image, be careful: your IP address may have changed, or you may be on a
          phishing site. Always check your browser's current URL before submitting your credentials.
          <a href="/help/faq#security-image">More info</a>.
        </p>
      </div>
    </div>--}%

    <div class="center vpad10" ng-show="getErrors()">
      <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>

    <div class="form-center-wrap center">
      <div>
        <form id="form-login" method="post" autocomplete="off" name="loginForm" ng-submit="submit()" novalidate="">
          <fieldset>
            <legend>Log In</legend>

            <div class="clearfix"></div>

            <div class="wrap-large">
              <div class="control-group">
                <div class="controls">
                  <input type="text" tabindex="1" class="input-large" name="username" ng-model="credentials.username"
                         required=""
                         placeholder="Username" autocomplete="off">

                  <p class="control-hint ralign">%{--<a href="#/forgot-username">Forgot Username?</a>--}%</p>
                </div>
              </div>

              <div class="control-group">
                <div class="controls lalign">
                  <input type="password" tabindex="2" class="input-large" name="password" required=""
                         ng-model="credentials.password" autocomplete="off" placeholder="Password">

                  <p class="control-hint ralign">%{--<a href="#/forgot-password">Forgot Password?</a>--}%</p>
                </div>
              </div>

              <div class="control-group">
                <div class="controls">
                  %{--<input type="password" tabindex="4" autocomplete="off" class="input-large"
                         name="otp" placeholder="One-time Password (optional)">

                  <p class="control-hint ralign"><a
                      href="#/bypass-otp">One-time password unavailable?</a></p>

                  <p class="control-hint ralign">
                    <a id="otp-hint" data-placement="right" rel="tooltip" href="#"
                       data-original-title="Optional generated passcode for two-factor auth.">What is this?</a>
                  </p>--}%
                </div>
              </div>

              <div class="control-group">
                <div class="controls vpad20">
                  <button type="submit" tabindex="4" id="btn-login"
                          class="btn btn-primary btn-large input-large">Log In</button>
                </div>
              </div>
            </div>
          </fieldset>
        </form>
      </div>

      %{--<div class="vpad10">
        <a href="#/signup">Need an account? Sign up now!</a>
      </div>--}%
    </div>
  </div>
</div>