# motion-doc

A sample of RubyMotion Command-Line Plugin

gem インストール後にコマンドを RubyGems を通じて実行することができません。
RubyMotion のプラグインは ~/Library/RubyMotion/command に配置する必要があるため、gem をインストールした後に手作業で所定の場所へコピーするか、gem 付属のインストーラを実行する必要があります。

  $ gem install my-command-line-plugin
  $ my-command-line-plugin install

そこで、extconf.rb を使用して手間を省きました。
通常 extconf.rb は C 拡張ライブラリをビルドするための Makefile を作成するために用いられます。

extconf.rb で必要なインストール処理をした後、ダミーの Makefile を作成しています。


----

RubyGems does not allow to run post install command.
RubyMotion will need to put your Command-Line Plugin in ~/Library/RubyMotion/command.

You have to install Command-Line Plugin into ~/Library/RubyMotion/command manually or using installer which is attached to gem after installed a gem.

So, I use the extconf.rb in order to install easily.
Normally, extconf.rb is used to create Makefile for C extension.
Run the install command in extconf.rb, after then create a Makefile as dummy :)
