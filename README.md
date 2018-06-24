# Flume Demo

En este repositorio se reunen distintas demostraciones del software [Apache Flume](https://flume.apache.org/).

### Integrantes: 
  - Bono, Juan Gabriel
  - Encina, Facundo
  - Imwinkelried, Estefanía 
  - Mangiantini, Matías
  - Puelman, Hernán
  - Vacalla Gismondi, Enzo

### Requisitos

- Tener instalado [Apache Flume](https://flume.apache.org/).
- **(OPCIONAL)** Para correr facilmente las demos se necesita `make` (viene instalado por defecto la mayoria de las veces).
- **(OPCIONAL)** Para correr la demo 3 se necesitan claves de [aplicación de Twitter](https://apps.twitter.com/).

### Comandos

#### Con Make

Para correr la demo 1:

```bash
make demo1
```

Para correr la demo 2:

```bash
make demo2
```

Parar correr la demo 3: 
1. Completar el archivo `twitter_keys` con las claves necesarias.
2. Ejecutar:
```bash
make demo3
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

Para correr la demo 3:
1. Completar el archivo `twitter_keys` con las claves necesarias.
2. Ejecutar:
```bash
source twitter_keys && \
flume-ng agent --conf conf --conf-file conf/demo3.conf --name agent -Dflume.root.logger=INFO,console \
-DpropertiesImplementation=org.apache.flume.node.EnvVarResolverProperties
```
