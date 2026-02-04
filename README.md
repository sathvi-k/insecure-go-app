# Insecure Go Application (For Security Testing)

⚠️ **WARNING: This application is intentionally vulnerable and should NEVER be used in production!**

This Go application contains intentional security vulnerabilities for testing security scanning tools like Snyk.

## Vulnerabilities Included

### Code Vulnerabilities (Snyk Code)

| Category | File | Description |
|----------|------|-------------|
| SQL Injection | `main.go` | Direct string concatenation in SQL queries |
| Command Injection | `main.go` | User input passed directly to shell execution |
| Path Traversal | `main.go`, `utils/file.go` | Unsanitized file paths |
| XSS | `main.go` | Reflected user input in HTML |
| SSTI | `main.go` | User-controlled templates |
| Open Redirect | `main.go` | Unvalidated redirect URLs |
| Hardcoded Secrets | `main.go` | Passwords and API keys in source |
| Weak Cryptography | `utils/crypto.go` | DES, RC4, MD5, SHA1 usage |
| Insecure Randomness | `handlers/auth.go` | math/rand instead of crypto/rand |
| SSRF | `utils/network.go` | Unvalidated URL fetching |
| Insecure TLS | `utils/network.go` | Disabled cert verification, weak TLS |
| Zip/Tar Slip | `utils/file.go` | Path traversal in archive extraction |
| CSRF | `handlers/auth.go` | Missing CSRF protection |
| Timing Attacks | `handlers/auth.go` | Non-constant-time comparison |
| Insecure Cookies | `handlers/auth.go` | Missing HttpOnly/Secure flags |

### Vulnerable Dependencies (Snyk Open Source)

| Package | Version | Known Vulnerabilities |
|---------|---------|----------------------|
| `github.com/dgrijalva/jwt-go` | v3.2.0 | CVE-2020-26160 - JWT validation bypass |
| `gopkg.in/yaml.v2` | v2.2.2 | Deserialization vulnerabilities |
| `github.com/gin-gonic/gin` | v1.4.0 | Multiple security issues |
| `golang.org/x/crypto` | v0.0.0-20190308221718 | Outdated with known issues |
| `golang.org/x/text` | v0.3.0 | CVE-2020-14040 - DoS vulnerability |
| `github.com/mholt/archiver` | v3.1.1 | Path traversal vulnerabilities |

## Running Security Scans

### Install Dependencies
```bash
go mod tidy
```

### Snyk Open Source Scan (SCA)
```bash
snyk test
```

### Snyk Code Scan (SAST)
```bash
snyk code test
```

### Full Scan
```bash
snyk test && snyk code test
```

## Project Structure

```
insecure-go-app/
├── main.go              # Main application with multiple vulnerabilities
├── go.mod               # Dependencies with known vulnerabilities
├── handlers/
│   └── auth.go          # Authentication handlers with security issues
├── utils/
│   ├── crypto.go        # Weak cryptography implementations
│   ├── file.go          # File handling with path traversal issues
│   └── network.go       # Network utilities with TLS/SSRF issues
└── README.md            # This file
```

## Purpose

This application is designed for:
- Testing Snyk scanning capabilities
- Security training and education
- Demonstrating common vulnerability patterns
- CI/CD security pipeline testing

## License

MIT - Use at your own risk for educational purposes only.
