# Ortam Kurulumu

Herhangi bir terminal üzerinden repository klonlanır:

```sh
git clone https://github.com/berkanyiildirim/yte-sql-egitim.git
```

docker-compose.yml dosyasının bulunduğu dizine gidilir:

```sh
cd yte-sql-egitim/sample-db/
```

Örnek veritabanı aşağıdaki komut ile oluşturulur:

```sh
docker-compose up -d
```

Not: İlk çalıştırma sırasında PostgreSQL imajı DockerHub üzerinden çekileceği için 1-2 dakika işlem sürebilir.

Docker desktop üzerinden örnek veritabanının oluşturulduğu kontrol edilir.

![Örnek veritabanı oluşturma](/img/img-1.jpeg "Veritabanı")

Bağlantı bilgileri:

```bash
kullanıcı: postgres
parola: yte
port: 5439
```

## ER Diyagram

![Örnek veritabanı ER diyagram](/img/img-2.png "ER diyagram")

SQL için faydalı kaynaklar ve platformlar:

1. https://sqlbolt.com/
2. https://sqlzoo.net/
3. https://lnkd.in/gtU9KcKN
4. https://lnkd.in/gP7g4RKh
5. https://lnkd.in/d3pt3MT4
6. https://lnkd.in/gEAMv4Rw
7. https://selectstarsql.com/
8. https://lnkd.in/dfSEeXsC
9. https://lnkd.in/gk5g3tQ9
10. https://lnkd.in/gXbjt89S
11. http://thedatamonk.com/
