class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2464"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/cybara-v1.0.2464-darwin-arm64-cli"; sha256 "a6a678b36801ac23f18ed622dea85620a5bfd3e3ceed6481cf70d1bc680ba59f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/cybara-v1.0.2464-darwin-x64-cli"; sha256 "b0783971ea2aed11652524e21cf3a0de3ccfbfdf3896e4549c59b7607ed143a1" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/cybara-v1.0.2464-linux-arm64-cli"; sha256 "37e85906348229e929a8291078a65e9549d180c6051d9f911d0e81c0dd10f681" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2464/cybara-v1.0.2464-linux-x64-cli"; sha256 "630a857e7655cda35b97f7590e4145d2d84d9a5a75f700207e2bf646ef2c9b47" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
