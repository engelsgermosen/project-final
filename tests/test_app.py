from app import app

def test_root_returns_hola_mundo():
    client = app.test_client()
    res = client.get("/")
    assert res.status_code == 200
    assert res.get_json()["message"].lower().startswith("hola mundo")
