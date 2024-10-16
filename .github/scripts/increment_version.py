#  Copyright 2024 Infosys Ltd.
#  Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
#  http://www.apache.org/licenses/LICENSE-2.0

import re

def increment_build_number(filename):
    with open(filename, 'r+') as file:
        content = file.read()
        match = re.search(r'version: (\d+\.\d+\.\d+\+)(\d+)', content)
        if match:
            version = match.group(1)
            build_number = int(match.group(2))
            build_number += 1
            new_content = re.sub(r'version: \d+\.\d+\.\d+\+\d+', f'version: {version}{build_number}', content)
            file.seek(0)
            file.write(new_content)
            file.truncate()

increment_build_number('pubspec.yaml')