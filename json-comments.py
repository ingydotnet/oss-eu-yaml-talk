import json
from pathlib import Path

import yamlstar

options = yamlstar.Options().plugin(yamlstar.json_comments())

loader = yamlstar.YAMLStar(options)

yaml = Path('json-comments.yaml').read_text()

data = loader.load(yaml)

print(json.dumps(data, indent=2))
