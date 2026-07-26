class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1936"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/cybara-v1.0.1936-darwin-arm64-cli"; sha256 "888c6e22b35881c9754570fe9bacb035a2231b8e4a4ae59554485b190358f369" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/cybara-v1.0.1936-darwin-x64-cli"; sha256 "ef3c4ccbcb67f345a930b411b449c50c36d63e51f9f69507607484b04d3a7540" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/cybara-v1.0.1936-linux-arm64-cli"; sha256 "31f68d69e2d7a93b594103fcf401a4a5f3ed7a4244d0556adaf2e2c53457ae45" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/cybara-v1.0.1936-linux-x64-cli"; sha256 "1c166ba705ee049f684a864aa2ace8dad49bef53cc1ea502df22ed5f39753cce" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
