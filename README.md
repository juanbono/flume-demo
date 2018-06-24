# Flume Demo

### Requisitos

- Tener instalado [Apache Flume](https://flume.apache.org/).
- (OPCIONAL) Para correr facilmente las demos se necesita `make` (viene instalado por defecto la mayoria de las veces).

### Demos

#### Con Make

Para correr la demo 1:

```bash
make demo1
```

Para correr la demo 2:

```bash
make demo2
```

### Manualmente

Para correr la demo 1:

```bash
flume-ng agent --conf conf --conf-file conf/demo1.conf --name agent -Dflume.root.logger=INFO,console
```

Para correr la demo 2:

```bash
flume-ng agent --conf conf --conf-file conf/demo2.conf --name agent -Dflume.root.logger=INFO,console
```
