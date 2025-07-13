# ==============================================================================
# Dockerfile dla Prostej Strony Statycznej (HTML/CSS/JS)
# ==============================================================================

# Użyj oficjalnego, bardzo lekkiego obrazu Nginx opartego na Alpine Linux.
FROM nginx:1.25-alpine

# Opcjonalnie: Usuń domyślną stronę powitalną Nginx, aby mieć pewność,
# że serwowana jest tylko nasza zawartość.
RUN rm /usr/share/nginx/html/index.html

# Skopiuj wszystkie pliki z bieżącego katalogu (gdzie jest ten Dockerfile)
# do katalogu `/usr/share/nginx/html` wewnątrz kontenera.
# To jest domyślny katalog, z którego Nginx serwuje pliki.
COPY . /usr/share/nginx/html/

# Informujemy Dockera, że kontener będzie nasłuchiwał na porcie 80 (domyślny port HTTP).
EXPOSE 80

# Polecenie startowe jest już wbudowane w obraz bazowy Nginx.
# Nie musimy go definiować. Nginx sam się uruchomi.