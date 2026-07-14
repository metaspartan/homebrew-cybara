class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1538"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/cybara-v1.0.1538-darwin-arm64-cli"; sha256 "9297964d02693d170ae0ea9e60c28ec4e3feb8eff1b4935fd6fb290e256512f7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/cybara-v1.0.1538-darwin-x64-cli"; sha256 "0a895fa1dea023123fa4daaf6741653f2e7aeb975a3b227d5722f57f06fc903e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/cybara-v1.0.1538-linux-arm64-cli"; sha256 "97677006e01e206f7be15969d880aff78a4c4ea690c0dec389229d9a736db414" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/cybara-v1.0.1538-linux-x64-cli"; sha256 "d84f65cae55e1f9c360f187e57cc858d3bb9f36c25813d163ff3e85bef2004e4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
