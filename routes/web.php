<?php

use App\Http\Middleware\LogAcessoMiddleware;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'PrincipalController@principal')->name('site.index')->middleware('log.acesso');

Route::get('/sobre-nos', 'SobreNosController@sobreNos')->name('site.sobrenos');
Route::get('/contato', 'ContatoController@create')->name('site.contato');
Route::post('/contato', 'ContatoController@save')->name('site.contato');
Route::get('/login/{erro?}','LoginController@index')->name('site.login');
Route::post('/login','LoginController@autenticar')->name('site.login');

Route::middleware('autenticacao:padrao, visitante')->prefix('app')->group(function(){
    Route::get('/home', 'HomeController@index')->name('app.home');
    Route::get('/sair', 'LoginController@sair')->name('app.sair');
    Route::get('/fornecedor','FornecedorController@index')->name('app.fornecedor');
    Route::get('/fornecedor/adicionar','FornecedorController@adicionar')->name('app.fornecedor.adicionar');
    Route::get('/fornecedor/editar/{id}','FornecedorController@editar')->name('app.fornecedor.editar');
    Route::post('/fornecedor/adicionar','FornecedorController@adicionar')->name('app.fornecedor.adicionar');
    Route::post('/fornecedor/listar','FornecedorController@listar')->name('app.fornecedor.listar');
    Route::get('/fornecedor/excluir/{id}','FornecedorController@excluir')->name('app.fornecedor.excluir');
     //Ao clicar no em "proxima pagina" na paginação e realizado um requisição do tipo get, por isso, esta sendo
    //acrescentada essa nota rota
    Route::get('/fornecedor/listar','FornecedorController@listar')->name('app.fornecedor.listar');

    //Como os metodos são padroes do framework (gerando pela tag --resource ou -r ao criar um controller)
    //O framework ira gerá as rotas de acordo com o nome do metodo e ja nomeadas
    //produto.index  ==> metodo index  --- http://127.0.0.1:8000/app/produto
    //produto.create ==> metodo create --- http://127.0.0.1:8000/app/produto/create
    Route::resource('produto', 'ProdutoController');

    Route::resource('produtoDetalhe', 'ProdutoDetalheController');

    Route::resource('cliente','ClienteController');
    Route::resource('pedido','PedidoController');
   // Route::resource('pedido-produto','PedidoProdutoController');

   Route::get('pedido-produto/create/{pedido}', 'PedidoProdutoController@create')->name('pedido-produto.create');
   Route::post('pedido-produto/store/{pedido}', 'PedidoProdutoController@store')->name('pedido-produto.store');
   Route::delete('pedido-produto/destroy/{pedido}/{produto}', 'PedidoProdutoController@destroy')->name('pedido-produto.destroy');

});

Route::fallback(function(){
    echo 'A rota acessada não existe. clique <a href="'.route('site.index').'">aqui</a> para retornar para página principal.';
});
