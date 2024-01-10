## High Risks

### `HIGH` Command Injection Vulnerabilities in HTTP Requests

###### `API`

Unable to connect to the server.

### `HIGH` Hardcoded Secrets

###### `Static`

We have searched the project for hardcoded

- mobile numbers
- emails
- tokens etc

and removed them.

#### Others

- Toll free numbers

## Medium Risks

### `MEDIUM` SQL Injection Vulnerabilities in HTTP Requests

###### `API`

Unable to connect to the server.

### `MEDIUM` Sensitive information in Sqlite database

> ### PENDING

### `MEDIUM` Storing Information in Shared Preferences

###### `Dynamic`

`accessToken` and `refreshToken` were being stored in Flutter secure storage without encrytion which internally uses shared preferences. This is now solved.

Other than these two no sesitive data is stored in shared preferences whatsoever.

Only user preferences were stored like

- Font scale factor
- Current language
- Some other boolean flags as such

### `MEDIUM` Integer Overflow Vulnerabilities in HTTP Requests

###### `API`

Unable to connect to the server.

### `MEDIUM` Android Tapjacking

###### `Static`

> ### PENDING Discussion

### `MEDIUM` Logging

###### `Static` `Dynamic`

The project is only using the logging framework which only logs while in debug mode.

All the other logs are coming from the dependencies.

### `MEDIUM` WebView Exploits

###### `Dynamic`

> ### PENDING
>
> Webview Javascript Channel

### `MEDIUM` Janus Vulnerability (CVE-2017-13156)

###### `Static`

Verified the apk with scheme `v1` and `v2` and both of them verified to be `true`. Verification with `v3` cameup `false`.

### `MEDIUM` StrandHogg Vulnerability

###### `Static`

False positive

### `MEDIUM` JSON Depth Overflow in HTTP Requests

###### `API`

Unable to connect to the server.

### `MEDIUM` Regex DoS Vulnerabilities in HTTP Requests

###### `API`

Unable to connect to the server.

### `MEDIUM` Disabled SSL CA Validation and Certificate Pinning

###### `Static`

SSL Pinning is already implemented

## Low Risk

### `LOW` Weak PRNG (Pseudorandom number generator)

###### `Static`

> ### PENDING
>
> Secure Random is not required in our use case

### `LOW` Bytecode Obfuscation

###### `Static`

It is solved. Need to be implemented during build time

### `LOW` HTTP TRACE method is enabled

###### `API`

False positive

### `LOW` Unused Permissions

###### `Static`

False Positive
