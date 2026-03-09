# ☁️ Terraform on AWS - Máster en Cloud Computing (IMMUNE)

¡Bienvenidos al Día 2 de Infraestructura como Código (IaC) con Terraform! 🚀

Ayer aprendimos los fundamentos trabajando en local. Hoy damos el salto a las grandes ligas: vamos a conectar Terraform con **Amazon Web Services (AWS)** para desplegar infraestructura real en la nube.

Usaremos **GitHub Codespaces**, que hoy viene con un superpoder extra: trae la **AWS CLI** ya preinstalada.

---

## 🛠️ 1. Arranca tu entorno de prácticas

1. Haz clic en el botón verde **`<> Code`** (arriba a la derecha).
2. Ve a la pestaña **`Codespaces`**.
3. Haz clic en **`Create codespace on main`**.
4. ☕ Espera unos segundos hasta que se abra tu editor.

---

## 🔐 2. Autenticación en AWS (¡NUEVO!)

Para que Terraform pueda crear recursos, necesita tus "llaves". Abre la terminal integrada y ejecuta:

    aws configure

Rellena los 4 datos con las credenciales del profesor:
1. **AWS Access Key ID**: `TU_ACCESS_KEY`
2. **AWS Secret Access Key**: `TU_SECRET_KEY`
3. **Default region name**: `eu-west-1`
4. **Default output format**: `json`

> ⚠️ Nota: Al escribir el Secret Key no se verá nada en pantalla por seguridad. Pega el valor y pulsa Enter.

---

## ✅ 3. Comprueba que todo funciona

Verifica tu conexión lanzando este comando en la terminal:

    aws sts get-caller-identity

*Si te devuelve un JSON con tu `Account`... ¡Estás dentro!* 🥳

---

## 🎯 4. ¡A por la Demo!

Cuando estés listo, haz clic en el siguiente enlace para abrir la guía del laboratorio:

👉 **[Abrir la Guía del Laboratorio - Día 2](./docs/lab-dia2.md)**
