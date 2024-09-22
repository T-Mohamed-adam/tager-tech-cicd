setup:
	@make build
	@make up
	@make composer-update
	@make data
build:
	docker-compose build --no-cache --force-rm

stop:
	docker-compose stop

down:
	docker-compose down

up:
	docker-compose up -d

composer-update:
	docker exec tager-tech bash -c "composer update"

data:
	docker exec tager-tech bash -c "php artisan migrate"
	docker exec tager-tech bash -c "php artisan db:seed"
