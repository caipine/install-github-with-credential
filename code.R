
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

