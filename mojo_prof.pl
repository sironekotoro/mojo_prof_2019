#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

# 以下の4行を追加
get '/profile' => sub {             # get関数の最初の引数が
  my $c = shift;                    # /profile となっている
  $c->render(template => 'profile');# ここを index から profile に変更する
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
<!-- <h1>タグの下に以下の4行を追加する -->
@@ profile.html.ep
% layout 'default';
% title 'ぷろふぃーる';
<h1>プロフィール</h1>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
