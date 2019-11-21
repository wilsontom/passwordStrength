# passwordStrength

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/wilsontom/passwordStrength.svg?branch=master)](https://travis-ci.org/wilsontom/passwordStrength) [![Build status](https://ci.appveyor.com/api/projects/status/aljp5wcf3jirjpsw/branch/master?svg=true)](https://ci.appveyor.com/project/wilsontom/passwordstrength/branch/master) [![codecov](https://codecov.io/gh/wilsontom/passwordStrength/branch/master/graph/badge.svg)](https://codecov.io/gh/wilsontom/passwordStrength) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0")

__Basic Password Strength Test__

### Installation & Usage

```r
remotes::install_github('wilsontom/passwordStrength')
```

```r
library(passwordStrength)

> password_strength('password')
$ENTROPY
[1] 37.60352

$STRENGTH
[1] "Moderate"


> password_strength('thequickbrownfoxjumpedoverthelazydog')
$ENTROPY
[1] 169.2158

$STRENGTH
[1] "Very Strong"

```
