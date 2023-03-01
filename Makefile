up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

init:
	docker-compose exec app composer install
	docker-compose exec app php artisan migrate
	docker-compose exec app php artisan db:seed

update:
	docker-compose exec app composer install
	docker-compose exec app php artisan migrate

composer_install:
	docker-compose exec app composer install
