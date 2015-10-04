{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Plus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google+ API enables developers to build on top of the Google+
-- platform.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference>
module Network.Google.Plus
    (
    -- * API
      PlusAPI
    , plusAPI
    , plusURL

    -- * Service Methods

    -- * REST Resources

    -- ** PlusActivitiesGet
    , module Network.Google.Resource.Plus.Activities.Get

    -- ** PlusActivitiesList
    , module Network.Google.Resource.Plus.Activities.List

    -- ** PlusActivitiesSearch
    , module Network.Google.Resource.Plus.Activities.Search

    -- ** PlusCommentsGet
    , module Network.Google.Resource.Plus.Comments.Get

    -- ** PlusCommentsList
    , module Network.Google.Resource.Plus.Comments.List

    -- ** PlusMomentsInsert
    , module Network.Google.Resource.Plus.Moments.Insert

    -- ** PlusMomentsList
    , module Network.Google.Resource.Plus.Moments.List

    -- ** PlusPeopleGet
    , module Network.Google.Resource.Plus.People.Get

    -- ** PlusPeopleList
    , module Network.Google.Resource.Plus.People.List

    -- ** PlusPeopleListByActivity
    , module Network.Google.Resource.Plus.People.ListByActivity

    -- ** PlusPeopleSearch
    , module Network.Google.Resource.Plus.People.Search

    -- * Types

    -- ** CommentPlusoners
    , CommentPlusoners
    , commentPlusoners
    , cpTotalItems

    -- ** ActivityProvider
    , ActivityProvider
    , activityProvider
    , apTitle

    -- ** CommentActorImage
    , CommentActorImage
    , commentActorImage
    , caiURL

    -- ** ActivityObjectPlusoners
    , ActivityObjectPlusoners
    , activityObjectPlusoners
    , aopTotalItems
    , aopSelfLink

    -- ** PlusActivitiesSearchOrderBy
    , PlusActivitiesSearchOrderBy (..)

    -- ** ActivityObjectAttachments
    , ActivityObjectAttachments
    , activityObjectAttachments
    , aoaFullImage
    , aoaImage
    , aoaObjectType
    , aoaURL
    , aoaEmbed
    , aoaContent
    , aoaThumbnails
    , aoaDisplayName
    , aoaId

    -- ** ActivityObjectAttachmentsThumbnailsImage
    , ActivityObjectAttachmentsThumbnailsImage
    , activityObjectAttachmentsThumbnailsImage
    , aoatiHeight
    , aoatiURL
    , aoatiWidth
    , aoatiType

    -- ** PlacePosition
    , PlacePosition
    , placePosition
    , ppLatitude
    , ppLongitude

    -- ** PersonURLs
    , PersonURLs
    , personURLs
    , puValue
    , puType
    , puLabel

    -- ** Person
    , Person
    , person
    , pCurrentLocation
    , pAgeRange
    , pEtag
    , pImage
    , pBraggingRights
    , pPlacesLived
    , pPlusOneCount
    , pObjectType
    , pCover
    , pKind
    , pRelationshipStatus
    , pURLs
    , pDomain
    , pURL
    , pVerified
    , pBirthday
    , pIsPlusUser
    , pTagline
    , pGender
    , pName
    , pEmails
    , pOccupation
    , pSkills
    , pLanguage
    , pAboutMe
    , pDisplayName
    , pId
    , pNickname
    , pOrganizations
    , pCircledByCount

    -- ** PlusActivitiesListCollection
    , PlusActivitiesListCollection (..)

    -- ** PlusPeopleListCollection
    , PlusPeopleListCollection (..)

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtURL
    , cirtId

    -- ** PersonOrganizations
    , PersonOrganizations
    , personOrganizations
    , poDePartment
    , poLocation
    , poEndDate
    , poPrimary
    , poStartDate
    , poName
    , poTitle
    , poType
    , poDescription

    -- ** ActivityObjectAttachmentsImage
    , ActivityObjectAttachmentsImage
    , activityObjectAttachmentsImage
    , aoaiHeight
    , aoaiURL
    , aoaiWidth
    , aoaiType

    -- ** CommentActor
    , CommentActor
    , commentActor
    , caImage
    , caURL
    , caDisplayName
    , caId
    , caVerification

    -- ** Moment
    , Moment
    , moment
    , mKind
    , mResult
    , mStartDate
    , mObject
    , mId
    , mType
    , mTarget

    -- ** ActivityObject
    , ActivityObject
    , activityObject
    , aoPlusoners
    , aoAttachments
    , aoObjectType
    , aoOriginalContent
    , aoURL
    , aoActor
    , aoContent
    , aoReplies
    , aoId
    , aoResharers

    -- ** ActivityObjectActor
    , ActivityObjectActor
    , activityObjectActor
    , aImage
    , aURL
    , aDisplayName
    , aId
    , aVerification

    -- ** ActivityActorImage
    , ActivityActorImage
    , activityActorImage
    , aaiURL

    -- ** PeopleFeed
    , PeopleFeed
    , peopleFeed
    , pfTotalItems
    , pfEtag
    , pfNextPageToken
    , pfKind
    , pfItems
    , pfSelfLink
    , pfTitle

    -- ** ActivityObjectAttachmentsEmbed
    , ActivityObjectAttachmentsEmbed
    , activityObjectAttachmentsEmbed
    , aoaeURL
    , aoaeType

    -- ** PersonCoverCoverPhoto
    , PersonCoverCoverPhoto
    , personCoverCoverPhoto
    , pccpHeight
    , pccpURL
    , pccpWidth

    -- ** PersonAgeRange
    , PersonAgeRange
    , personAgeRange
    , parMax
    , parMin

    -- ** ActivityObjectReplies
    , ActivityObjectReplies
    , activityObjectReplies
    , aorTotalItems
    , aorSelfLink

    -- ** ActivityObjectActorImage
    , ActivityObjectActorImage
    , activityObjectActorImage
    , actURL

    -- ** PlusCommentsListSortOrder
    , PlusCommentsListSortOrder (..)

    -- ** ItemScope
    , ItemScope
    , itemScope
    , isGivenName
    , isContentSize
    , isThumbnail
    , isTickerSymbol
    , isHeight
    , isThumbnailURL
    , isImage
    , isStreetAddress
    , isWorstRating
    , isLocation
    , isAttendees
    , isText
    , isKind
    , isLatitude
    , isPostalCode
    , isEndDate
    , isAssociatedMedia
    , isPlayerType
    , isURL
    , isWidth
    , isCaption
    , isAddress
    , isAddressCountry
    , isPostOfficeBoxNumber
    , isAdditionalName
    , isFamilyName
    , isDateCreated
    , isRatingValue
    , isDatePublished
    , isStartDate
    , isGender
    , isName
    , isBestRating
    , isAddressLocality
    , isPartOfTVSeries
    , isContentURL
    , isByArtist
    , isAbout
    , isReviewRating
    , isDateModified
    , isAuthor
    , isGeo
    , isId
    , isPerformers
    , isAttendeeCount
    , isInAlbum
    , isEmbedURL
    , isType
    , isContributor
    , isLongitude
    , isDuration
    , isAddressRegion
    , isAudio
    , isDescription
    , isBirthDate

    -- ** ActivityActorVerification
    , ActivityActorVerification
    , activityActorVerification
    , aavAdHocVerified

    -- ** ActivityFeed
    , ActivityFeed
    , activityFeed
    , afEtag
    , afNextPageToken
    , afNextLink
    , afKind
    , afItems
    , afSelfLink
    , afId
    , afUpdated
    , afTitle

    -- ** PersonPlacesLived
    , PersonPlacesLived
    , personPlacesLived
    , pplValue
    , pplPrimary

    -- ** ActivityObjectActorVerification
    , ActivityObjectActorVerification
    , activityObjectActorVerification
    , aoavAdHocVerified

    -- ** PlusACLentryResource
    , PlusACLentryResource
    , plusACLentryResource
    , parDisplayName
    , parId
    , parType

    -- ** PersonEmails
    , PersonEmails
    , personEmails
    , peValue
    , peType

    -- ** PersonImage
    , PersonImage
    , personImage
    , piURL
    , piIsDefault

    -- ** PersonName
    , PersonName
    , personName
    , pnGivenName
    , pnMiddleName
    , pnFormatted
    , pnHonorificPrefix
    , pnFamilyName
    , pnHonorificSuffix

    -- ** PlaceAddress
    , PlaceAddress
    , placeAddress
    , paFormatted

    -- ** ActivityObjectAttachmentsThumbnails
    , ActivityObjectAttachmentsThumbnails
    , activityObjectAttachmentsThumbnails
    , aoatImage
    , aoatURL
    , aoatDescription

    -- ** PlusMomentsListCollection
    , PlusMomentsListCollection (..)

    -- ** Activity
    , Activity
    , activity
    , aaAccess
    , aaPlaceName
    , aaEtag
    , aaAnnotation
    , aaLocation
    , aaGeocode
    , aaKind
    , aaRadius
    , aaPublished
    , aaURL
    , aaActor
    , aaAddress
    , aaObject
    , aaId
    , aaUpdated
    , aaTitle
    , aaVerb
    , aaCrosspostSource
    , aaPlaceId
    , aaProvider

    -- ** PersonCover
    , PersonCover
    , personCover
    , pcLayout
    , pcCoverInfo
    , pcCoverPhoto

    -- ** PlusMomentsInsertCollection
    , PlusMomentsInsertCollection (..)

    -- ** Place
    , Place
    , place
    , plaKind
    , plaAddress
    , plaDisplayName
    , plaId
    , plaPosition

    -- ** PersonCoverCoverInfo
    , PersonCoverCoverInfo
    , personCoverCoverInfo
    , pcciTopImageOffset
    , pcciLeftImageOffset

    -- ** PlusPeopleListByActivityCollection
    , PlusPeopleListByActivityCollection (..)

    -- ** ActivityObjectResharers
    , ActivityObjectResharers
    , activityObjectResharers
    , aTotalItems
    , aSelfLink

    -- ** Comment
    , Comment
    , comment
    , cEtag
    , cPlusoners
    , cKind
    , cPublished
    , cActor
    , cSelfLink
    , cObject
    , cId
    , cUpdated
    , cVerb
    , cInReplyTo

    -- ** ActivityActor
    , ActivityActor
    , activityActor
    , aaaImage
    , aaaURL
    , aaaName
    , aaaDisplayName
    , aaaId
    , aaaVerification

    -- ** CommentObject
    , CommentObject
    , commentObject
    , coObjectType
    , coOriginalContent
    , coContent

    -- ** ActivityObjectAttachmentsFullImage
    , ActivityObjectAttachmentsFullImage
    , activityObjectAttachmentsFullImage
    , aoafiHeight
    , aoafiURL
    , aoafiWidth
    , aoafiType

    -- ** PlusPeopleListOrderBy
    , PlusPeopleListOrderBy (..)

    -- ** ACL
    , ACL
    , acl
    , aKind
    , aItems
    , aDescription

    -- ** MomentsFeed
    , MomentsFeed
    , momentsFeed
    , mfEtag
    , mfNextPageToken
    , mfNextLink
    , mfKind
    , mfItems
    , mfSelfLink
    , mfUpdated
    , mfTitle

    -- ** CommentFeed
    , CommentFeed
    , commentFeed
    , cfEtag
    , cfNextPageToken
    , cfNextLink
    , cfKind
    , cfItems
    , cfId
    , cfUpdated
    , cfTitle

    -- ** CommentActorVerification
    , CommentActorVerification
    , commentActorVerification
    , cavAdHocVerified

    -- ** ActivityActorName
    , ActivityActorName
    , activityActorName
    , aanGivenName
    , aanFamilyName
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Plus.Activities.Get
import           Network.Google.Resource.Plus.Activities.List
import           Network.Google.Resource.Plus.Activities.Search
import           Network.Google.Resource.Plus.Comments.Get
import           Network.Google.Resource.Plus.Comments.List
import           Network.Google.Resource.Plus.Moments.Insert
import           Network.Google.Resource.Plus.Moments.List
import           Network.Google.Resource.Plus.People.Get
import           Network.Google.Resource.Plus.People.List
import           Network.Google.Resource.Plus.People.ListByActivity
import           Network.Google.Resource.Plus.People.Search

{- $resources
TODO
-}

type PlusAPI =
     ActivitiesListResource :<|> ActivitiesGetResource
       :<|> ActivitiesSearchResource
       :<|> PeopleListResource
       :<|> PeopleGetResource
       :<|> PeopleListByActivityResource
       :<|> PeopleSearchResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> MomentsInsertResource
       :<|> MomentsListResource

plusAPI :: Proxy PlusAPI
plusAPI = Proxy