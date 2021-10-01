/**

## The Decentology Smart Module standard on Ethereum

## `IHyperverseModule` interface

*/

// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

abstract contract IHyperverseModule {
    ModuleMetadata public metadata;

    constructor(
        bytes memory _title,
        Author memory _author,
        bytes memory _version,
        uint64 _publishedAt,
        bytes memory _externalLink,
        bytes[] memory _secondaryModules
    ) {
        metadata.title = _title;
        metadata.authors.push(_author);
        metadata.version = _version;
        metadata.publishedAt = _publishedAt;
        metadata.externalLink = _externalLink;
        metadata.secondaryModules = _secondaryModules;
    }

    struct ModuleMetadata {
        bytes title;
        Author[] authors;
        bytes version;
        uint64 publishedAt;
        bytes externalLink; // <-- can't be "external" in Solidity because it's a keyword
        bytes[] secondaryModules;
    }

    struct Author {
        address authorAddress; // <-- can't be "address" in Solidity because it's a keyword
        string externalLink;
    }
}
