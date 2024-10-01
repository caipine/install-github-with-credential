
```{r}
usethis::create_github_token()
```

#in R, use credentials::git_credential_forget() to clear the cache
#use credentials::set_github_pat() and paste your token.
```{r}
credentials::git_credential_forget()
```

```{r}
credentials::set_github_pat()
```
```{r}
remotes::install_github('caipine/DoubletFinder')
```




Sys.getenv("GITHUB_PAT")
#"ghp_**************************"
Sys.unsetenv("GITHUB_PAT")


usethis::edit_r_environ()


In the upper-right corner of GitHub, select your profile photo, then click  Your organizations.
Next to the organization, click Settings.
In the left sidebar, under  Personal access tokens, click Settings.
Select the Tokens (classic) tab to access the personal access tokens (classic) settings.
Under Personal access token (classic), select the option that meets your needs:
Allow access via personal access tokens (classic): Personal access tokens (classic) can access resources owned by the organization.
Restrict access via personal access tokens (classic): Personal access tokens (classic) cannot access resources owned by the organization. SSH keys created by personal access tokens (classic) will continue to work.
Click Save.



change at here
https://github.com/settings/tokens
edit directly
/rsrch3/home/lym_myl_rsch/qcai1/.Renviron



















https://stackoverflow.com/questions/70908295/failed-to-install-unknown-package-from-github
in seadragon to remove PAT

You need to check if you have a personal access token set in your environment. For example, when I have a Git project, I set a personal access token. However, I set this in the project environment, so that it isn't any issues outside of that environment.

To see if there is one assigned:

Sys.getenv("GITHUB_PAT")
If there is one set, write it down (you may need that in the future).

To remove it, so you can install the GitHub package:

Sys.unsetenv("GITHUB_PAT")
