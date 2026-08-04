class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2058"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/cybara-v1.0.2058-darwin-arm64-cli"; sha256 "10db13bac6986ce641834899ed8f88731f59e083c1bfc3c122924bc1b297327f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/cybara-v1.0.2058-darwin-x64-cli"; sha256 "b98d51b46012a537be61cf1847605ea09cbba711581371869469221215c244c4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/cybara-v1.0.2058-linux-arm64-cli"; sha256 "7a7c55af6729dd903c34715f06743f1ec53b2139cda91646dcc542f11c6d20a2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2058/cybara-v1.0.2058-linux-x64-cli"; sha256 "c6068874ebb6bad9b79187e7d8fb4be2771a6f4a9317da1ea262ce0fd9ef8a64" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
