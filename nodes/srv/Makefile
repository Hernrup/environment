ssl:
	docker-compose up ssl
	docker-compose exec nginx nginx -s reload

ssl-standalone:
	docker-compose up ssl-standalone

run:
	docker-compose up -d plex req sonarr nzb potatoe nginx

stop:
	docker-compose down

open:
	sensible-browser tv.hernrup.se
	sensible-browser plex.hernrup.se
	sensible-browser movie.hernrup.se
	sensible-browser req.hernrup.se
	sensible-browser nzb.hernrup.se
