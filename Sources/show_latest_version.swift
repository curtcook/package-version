import Foundation
import ShellOut

var repos: [String] = [
    "ghcr.io/curtcook/ccdotnet3",
    "ghcr.io/curtcook/ccdotnet-api",
    "ghcr.io/curtcook/pattilou-ui2",
    "ghcr.io/curtcook/pattilou-api",
    "ghcr.io/curtcook/orchards-grove-ui2"
]

func showLatestPackageVersions() {
    for repo in repos {
        showLatestPackageVersion(repo: repo)
    }
    
}

func showLatestPackageVersion(repo: String) -> Void {
    do {
        let output = try shellOut(to: "docker image ls | grep -m 1 " + repo )
        print(output)
    } catch {
        print(error)
    }
}
