module insecure-go-app

go 1.19

require (

	// fixed: migrated from dgrijalva/jwt-go v3.2.0 to v4 module path
	github.com/dgrijalva/jwt-go/v4 v4.0.0-preview1
	// VULNERABLE: MySQL driver - older version
	github.com/go-sql-driver/mysql v1.4.0

	// VULNERABLE: Old version of gorilla/mux
	github.com/gorilla/mux v1.7.0

	// yaml.v2 has known vulnerabilities
	gopkg.in/yaml.v2 v2.2.2
)

require google.golang.org/appengine v1.6.8 // indirect
