import mtcli_start
import mock


@mock.patch("mtcli_start.input")
def test_obtem_string_do_caminho_do_csv(input):
    input.return_value = "c:"
    assert mtcli_start.get_csv_path() == "c:"


def test_nome_do_arquivo_env():
    assert mtcli_start.env_filename == ".env"


def test_caminho_do_csv_reformatado():
    path = "C:\Files"
    assert mtcli_start.path_format(path) == "c:/Files/"


def test_cria_arquivo_env_com_os_parametros_iniciais():
    path = "C:/Files/"
    assert mtcli_start.create_envfile(path) == True
