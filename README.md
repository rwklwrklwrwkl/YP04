
1. **accounts** — регистрация, вход по JWT, роли: кладовщик, менеджер склада, администратор, поставщик/логист, аналитик.
2. **inventory** — категории, товары, артикулы, штрихкоды, остатки, места хранения, минимальный остаток.
3. **receipts** — поставщики и приёмка товара. При проведении поступления остаток автоматически увеличивается.
4. **orders** — комплектование/отгрузка. При отгрузке проверяется наличие товара и остаток автоматически уменьшается.
5. **reports** — KPI, отчёт по остаткам, позиции ниже минимального остатка.
6. **notifications** — уведомления пользователя.
7. **barcodes** — поиск товара по штрихкоду.
8. **dashboard** — Streamlit-дашборд с показателями и таблицами.

1. Распаковать архив.
2. Запустить `run_server.bat`.
3. В новом окне выполнить:
   `python manage.py createsuperuser`
4. Открыть `http://127.0.0.1:8000/admin/`.
5. Для аналитики запустить `run_dashboard.bat`.

По умолчанию проект работает на SQLite, чтобы практическая сразу запускалась. В `.env.example` оставлены параметры PostgreSQL — стек соответствует проекту складского учёта.

## Основные API
- `POST /api/auth/register/`
- `POST /api/auth/login/`
- `GET /api/inventory/products/`
- `GET /api/inventory/stock/`
- `POST /api/receipts/documents/`
- `POST /api/receipts/documents/{id}/accept/`
- `POST /api/orders/shipments/`
- `POST /api/orders/shipments/{id}/ship/`
- `GET /api/reports/kpi/`
- `GET /api/reports/stock/`
- `GET /api/reports/low-stock/`
- `GET /api/barcodes/lookup/{barcode}/`

## Технологии
Python, Django, Django REST Framework, PostgreSQL (поддерживается через настройки), Redis/Kafka (зависимости подготовлены под дальнейшую интеграцию), Streamlit, Pandas, NumPy.
