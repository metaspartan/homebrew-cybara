class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1543"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/cybara-v1.0.1543-darwin-arm64-cli"; sha256 "732aef87316dfe96d504b4a4896f9e5b644fa349798f3a6eff84c94d620b412e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/cybara-v1.0.1543-darwin-x64-cli"; sha256 "08868eef068bad22c794aadc493909b461ae4f2da0c69c442cdd64c5584c99ca" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/cybara-v1.0.1543-linux-arm64-cli"; sha256 "944c391c45caca4f69c1d965d077252fed9c84758de3a695fecd8714427c406d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/cybara-v1.0.1543-linux-x64-cli"; sha256 "df7b43821625567e362bcf80ee3b04e52d2aefbca0ea43d47c2f2917cbd1f080" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
