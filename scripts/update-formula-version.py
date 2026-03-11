#!/usr/bin/env python3
"""Update the infrahouse-toolkit formula version and sha256."""
import hashlib
import re
import sys
import urllib.request


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <formula_path> <tag>")
        sys.exit(1)

    formula_path, tag = sys.argv[1], sys.argv[2]

    url = f"https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/{tag}.tar.gz"
    with urllib.request.urlopen(url) as response:
        sha256 = hashlib.sha256(response.read()).hexdigest()

    with open(formula_path) as f:
        content = f.read()

    content = re.sub(
        r'url "https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/.*\.tar\.gz"',
        f'url "{url}"',
        content,
    )
    content = re.sub(
        r'sha256 "[a-f0-9]{64}"',
        f'sha256 "{sha256}"',
        content,
        count=1,
    )

    with open(formula_path, "w") as f:
        f.write(content)

    print(f"Updated to {tag} (sha256: {sha256})")


if __name__ == "__main__":
    main()
