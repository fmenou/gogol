{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesInsert@.
module Network.Google.Resource.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertResource

    -- * Creating a Request
    , sizesInsert'
    , SizesInsert'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sSize
    , sUserIP
    , sProfileId
    , sKey
    , sOAuthToken
    , sFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesInsert@ which the
-- 'SizesInsert'' request conforms to.
type SizesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Size :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert'' smart constructor.
data SizesInsert' = SizesInsert'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sSize        :: !Size
    , _sUserIP      :: !(Maybe Text)
    , _sProfileId   :: !Int64
    , _sKey         :: !(Maybe Key)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sSize'
--
-- * 'sUserIP'
--
-- * 'sProfileId'
--
-- * 'sKey'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
sizesInsert'
    :: Size -- ^ 'Size'
    -> Int64 -- ^ 'profileId'
    -> SizesInsert'
sizesInsert' pSSize_ pSProfileId_ =
    SizesInsert'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sSize = pSSize_
    , _sUserIP = Nothing
    , _sProfileId = pSProfileId_
    , _sKey = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SizesInsert' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SizesInsert' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | Multipart request metadata.
sSize :: Lens' SizesInsert' Size
sSize = lens _sSize (\ s a -> s{_sSize = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIP :: Lens' SizesInsert' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | User profile ID associated with this request.
sProfileId :: Lens' SizesInsert' Int64
sProfileId
  = lens _sProfileId (\ s a -> s{_sProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SizesInsert' (Maybe Key)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' SizesInsert' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SizesInsert' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth SizesInsert' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesInsert'{..}
          = go _sProfileId _sQuotaUser (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
              _sSize
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SizesInsertResource)
                      r
                      u