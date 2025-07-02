class Terminalgpt < Formula
  include Language::Python::Virtualenv

  desc "AI chat assistant in your terminal powered by OpenAI ChatGPT models"
  homepage "https://github.com/adamyodinsky/TerminalGPT"
  url "https://files.pythonhosted.org/packages/source/t/terminalgpt/terminalgpt-2.2.7.tar.gz"
  sha256 "ecb6cbc3338c96bcb5e7081241fea59da39e43a1c3df6a94f76024333078df62"
  license "MIT"

  depends_on "python@3.9"

  resource "openai" do
    url "https://files.pythonhosted.org/packages/49/f5/2c0c1e10b82ee10c516912f700b4e0d1f5a9309db1fa1a1afb33591fe8c3/openai-1.2.0.tar.gz"
    sha256 "4be1dad329e621d72abfee42781db1b15c6ff8f5c2b0784c4c44535c51481dc4"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/9f/88/77a86f915a81449156375b7538c94105a34bebf00838462c9d3fced490e9/tiktoken-0.5.2.tar.gz"
    sha256 "2c89944399d1ee39c2ccd0b03acdca8e6ad0b1ce5fa3e58b3f896f3c68b6eea4"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/13/dd/a9608b7aebe5d2dc0c98a4b2090a6b815628efa46cc1c046b89d8cd25f4c/cryptography-41.0.7.tar.gz"
    sha256 "13f93ce9bea785e80b1de4693c69bfb895c57d2e67629355c6a589dac611c0a3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/cc/c6/25b6a3d5cd295304de1e32c9edbcf319a52e965b339629d37d42bb7126ca/prompt_toolkit-3.0.43.tar.gz"
    sha256 "3527b7af26106cbc65a040bcc84839a3566ec1b051bb0bfe953631e704b0ff7d"
  end

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/0c/d4/e2fae7d1290d2f80eec269e388c45eab7fe069a21ada8c773aa7f4c16214/yaspin-2.5.0.tar.gz"
    sha256 "59c6f270913a5f6b357a1433cd7948466ea0fbd0a1754c06e49175c19f6bc4d1"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a7/ec/4a7d80728bd429f7c0d4d51245287158a1516315cadbb146012439403a9d/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "TerminalGPT", shell_output("#{bin}/terminalgpt --version")
  end
end 
