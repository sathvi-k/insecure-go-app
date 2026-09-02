module insecure-go-app

go 1.19

require (
	// VULNERABLE: jwt-go has known vulnerabilities (CVE-2020-26160)
	github.com/dgrijalva/jwt-go v3.2.0+incompatible

	// VULNERABLE: MySQL driver - older version
	github.com/go-sql-driver/mysql v1.4.0

	// VULNERABLE: Old version of gorilla/mux
	github.com/gorilla/mux v1.7.0

	// VULNERABLE: yaml.v2 has known vulnerabilities
	gopkg.in/yaml.v2 v2.2.8
)

require google.golang.org/appengine v1.6.8 // indirect
