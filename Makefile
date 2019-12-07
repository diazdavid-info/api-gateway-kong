parse:
	docker-compose exec kong kong config parse /etc/kong/kong.yml

import:
	docker-compose exec kong kong config db_import /etc/kong/kong.yml

reload:
	docker-compose exec kong kong reload

all: parse import reload

export_config:
	docker-compose exec kong kong config db_export /etc/kong/kong.yml.exported