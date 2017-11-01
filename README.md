# Binary Access Configuration

This project contains file(s) for common configuration of access to secured binary artifact repositories

## Files

### artifactory-credentials.gradle

This file allows configuration of a set of username/password credentials via either environment variables or Gradle properties in the user's "Gradle Home" to be applied to a sub-set of the repositories Gradle accesses

#### Use

Apply the file via

```
apply from: 'https://bitbucket.org/romeara-bds/binary-access-configuration/raw/master/artifactory-credentials.gradle'
```

To any block containing a "repositories" element. This commonly includes the `buildscript`, `allprojects`, or `subprojects` block(s)

Note: You may need to use to following pattern for buildscript blocks:

```
buildscript { scriptHandler ->
    apply from: 'https://bitbucket.org/romeara-bds/binary-access-configuration/raw/master/artifactory-credentials.gradle', to: scriptHandler
}
```

#### Required Values

- ARTIFACTORY_HOST_PATTERN
    - A string to check against repository names to filter which repositories credentials are applied to. Any repository with a URL containing this string will have credentials applied
    - Default: 'blackducksoftware.com/artifactory'
- ARTIFACTORY_USER
    - The username to use to access the repositories matching the host pattern
- ARTIFACTORY_PASSWORD
    - The password to use to access the repositories matching the host pattern