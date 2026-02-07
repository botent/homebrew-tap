class Memini < Formula
  desc "Memini by AG\\I — interactive TUI for AI chat with persistent memory"
  homepage "https://github.com/botent/agi-knowledge-base"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/botent/agi-knowledge-base/releases/download/v0.1.0/memini-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "9a7fdce6669a5b7d7efd933f751768862df8885655824a2c75b0542187c90ac3"
  else
    url "https://github.com/botent/agi-knowledge-base/releases/download/v0.1.0/memini-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "b29955aad7f6ff51ad28c0d2b4074ed6816bb2837261b4eb9c1f4025f60d0121
  end

  license "MIT"

  def install
    bin.install "memini"
  end

  test do
    assert_match "memini", shell_output("#{bin}/memini --help 2>&1", 1)
  end
end
