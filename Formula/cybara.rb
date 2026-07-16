class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1701"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/cybara-v1.0.1701-darwin-arm64-cli"; sha256 "3d56b51402ae392e71623c4ec76b5bbe6c001b62d960c0bd5264f13ab3f28fe5" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/cybara-v1.0.1701-darwin-x64-cli"; sha256 "8f916ed080d08aca235907dc7814c0d3e729801e2ae726278ba92d202a55b207" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/cybara-v1.0.1701-linux-arm64-cli"; sha256 "e22e06b86f38aa95151fe088afb86388748b335f2b28db125f995ba4060b4017" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1701/cybara-v1.0.1701-linux-x64-cli"; sha256 "b780681d9b342d013e0ba7ca30782bc66a6b1b5ef99505b9ad1c131d9ce3717d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
