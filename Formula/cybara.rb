class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1466"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/cybara-v1.0.1466-darwin-arm64-cli"; sha256 "03c25cc2e31073be858325fd418372464e7f45b9dcb88c8ce5f07316c1d35b77" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/cybara-v1.0.1466-darwin-x64-cli"; sha256 "085e85ff0025001dfca88a42ed3ba9c702de57cb3769aa02a4a0bdb9af4dc711" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/cybara-v1.0.1466-linux-arm64-cli"; sha256 "47ed5c5bc2a254463d7c17a52cc373603e5f64dea212778e4f18ddb5f80f2644" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/cybara-v1.0.1466-linux-x64-cli"; sha256 "8497d328a4766544f2b929fd6d531d062d12625401ff542e9b8c50595ddfeaa5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
