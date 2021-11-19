# What is `dlx`?

It's a command line tool to **D**own**L**oad and e**X**tract files.  
It is available to verify the downloaded file with its hash before extracting.


# Requirements

* [Zsh](https://www.zsh.org/)
* [cURL](https://curl.se)
* Hash tools
    - MD5: `md5`, `md5sum`, `gmd5sum`, or `openssl`
    - SHA1: `sha1sum`, `gsha1sum`, or `openssl`
* OS: macOS/Linux


# Usage

```console
% dlx https://example.com/veryFantasticTools.zip \
    --md5=63aac7068fea572fea8d15417d846d80

% dlx https://example.com/veryFantasticOtherTools.tar.gz \
    --pgp=https://example.com/veryFantasticOtherTools.tar.gz.sig
```

## Samples

### Apache mod_fcgid FastCGI module

```console
% mod_fcgid_url="https://dlcdn.apache.org/httpd/mod_fcgid/mod_fcgid-2.3.9.tar.gz"
% dlx "$mod_fcgid_url" \
  --md5 "$mod_fcgid_url.md5" \
  --sha1 "$mod_fcgid_url.sha1" \
  --dir ./my-fcgid-directory
```

# License
MIT License.  
See "LICENSE.txt" for more information.
